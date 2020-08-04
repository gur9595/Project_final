package com.kosmo.project_final;

import com.github.scribejava.core.builder.api.DefaultApi20;


public class KakaoLoginApi extends DefaultApi20{
 
    protected KakaoLoginApi(){
    }
 
    private static class InstanceHolder{
        private static final KakaoLoginApi INSTANCE = new KakaoLoginApi();
    }
 
 
    public static KakaoLoginApi instance(){
        return InstanceHolder.INSTANCE;
    }
 
    @Override
    public String getAccessTokenEndpoint() {
        return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
    }                   
 
    @Override
    protected String getAuthorizationBaseUrl() {
        return "https://nid.naver.com/oauth2.0/authorize";
    }   
 
}
