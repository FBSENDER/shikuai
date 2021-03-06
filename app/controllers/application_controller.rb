require 'net/http'
require 'iquan'
require 'zkapi/zk_api'
require 'zkapi/lanlan_api'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def is_robot?
    user_agent = request.headers["HTTP_USER_AGENT"]
    user_agent.present? && user_agent =~ /(bot|spider|slurp|Linux x86_64)/i
  end

  def is_device_mobile?
    user_agent = request.headers["HTTP_USER_AGENT"]
    user_agent.present? && user_agent =~ /\b(Android|iPhone|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook|UCWEB|Mobile)\b/i
  end
  def redirect_pc_to_mobile
    if request.host == 'pc domain' && is_device_mobile?
      redirect_to "http://mobile domain#{request.path}"
    end
  end
  def not_found
    raise ActionController::RoutingError.new('NOT FOUND')
  end
  def is_keyword_url?(keyword)
    keyword =~ /(http|taobao|tmall)/i
  end

  def get_tb_id(url)
    m = url.match(/id=(\d+)/i)
    return m[1] if m
    nil
  end

  def get_suggest_keywords_new(keyword)
    begin
      sk = SuggestKeyword.where(keyword: keyword).take
      return [] if sk.nil?
      sk.sks.split(',')
    rescue
      return []
    end
  end
end
