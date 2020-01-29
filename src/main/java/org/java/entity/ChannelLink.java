package org.java.entity;

public class ChannelLink {
    private Integer channelId;

    private Integer linkId;

    public ChannelLink(Integer channelId, Integer linkId) {
        this.channelId = channelId;
        this.linkId = linkId;
    }

    public ChannelLink() {
        super();
    }

    public Integer getChannelId() {
        return channelId;
    }

    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    public Integer getLinkId() {
        return linkId;
    }

    public void setLinkId(Integer linkId) {
        this.linkId = linkId;
    }
}