package org.java.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Channel {
    @TableId(type = IdType.AUTO)
    private Integer channelId;

    private String channelName;

    private String website;

    private Integer channelTypeId;

    private Integer principalId;

    private Integer contractId;

    private String progressSituation;
}