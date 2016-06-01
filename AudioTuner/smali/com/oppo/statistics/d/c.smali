.class public Lcom/oppo/statistics/d/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/oppo/common/EnvConstants;->ENV:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-string v0, "http://115.236.185.208:10086/NearMeStatisticsSvr/service/AppLog"

    goto :goto_0

    :pswitch_2
    const-string v0, "http://115.236.185.208:7806/statistics/ClientStartUpload"

    goto :goto_0

    :pswitch_3
    const-string v0, "http://115.236.185.208:10011/GetSDKConfig"

    goto :goto_0

    :pswitch_4
    const-string v0, "http://115.236.185.208:8806/statistics/Exception"

    goto :goto_0

    :pswitch_5
    const-string v0, "http://115.236.185.208:7806/statistics/ClientPageVisit"

    goto :goto_0

    :pswitch_6
    const-string v0, "http://115.236.185.208:7806/statistics/UserActionUpload"

    goto :goto_0

    :pswitch_7
    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    const-string v0, "http://115.236.185.208:10086/NearMeStatisticsSvr/service/AppLog"

    goto :goto_0

    :pswitch_9
    const-string v0, "http://115.236.185.208:7806/statistics/ClientStartUpload"

    goto :goto_0

    :pswitch_a
    const-string v0, "http://115.236.185.208:10011/GetSDKConfig"

    goto :goto_0

    :pswitch_b
    const-string v0, "http://115.236.185.208:8806/statistics/Exception"

    goto :goto_0

    :pswitch_c
    const-string v0, "http://115.236.185.208:7806/statistics/ClientPageVisit"

    goto :goto_0

    :pswitch_d
    const-string v0, "http://115.236.185.208:7806/statistics/UserActionUpload"

    goto :goto_0

    :pswitch_e
    packed-switch p0, :pswitch_data_3

    goto :goto_0

    :pswitch_f
    const-string v0, "http://115.236.185.208:10086/NearMeStatisticsSvr/service/AppLog"

    goto :goto_0

    :pswitch_10
    const-string v0, "http://115.236.185.208:7806/statistics/ClientStartUpload"

    goto :goto_0

    :pswitch_11
    const-string v0, "http://115.236.185.208:10011/GetSDKConfig"

    goto :goto_0

    :pswitch_12
    const-string v0, "http://115.236.185.208:8806/statistics/Exception"

    goto :goto_0

    :pswitch_13
    const-string v0, "http://115.236.185.208:7806/statistics/ClientPageVisit"

    goto :goto_0

    :pswitch_14
    const-string v0, "http://115.236.185.208:7806/statistics/UserActionUpload"

    goto :goto_0

    :pswitch_15
    packed-switch p0, :pswitch_data_4

    goto :goto_0

    :pswitch_16
    const-string v0, "http://i.stat.nearme.com.cn:10086/NearMeStatisticsSvr/service/AppLog"

    goto :goto_0

    :pswitch_17
    const-string v0, "http://i.stat.nearme.com.cn:10018/statistics/ClientStartUpload"

    goto :goto_0

    :pswitch_18
    const-string v0, "http://c.stat.nearme.com.cn:10014/GetSDKConfig"

    goto :goto_0

    :pswitch_19
    const-string v0, "http://i.stat.nearme.com.cn:10016/statistics/Exception"

    goto :goto_0

    :pswitch_1a
    const-string v0, "http://i.stat.nearme.com.cn:10018/statistics/ClientPageVisit"

    goto :goto_0

    :pswitch_1b
    const-string v0, "http://i.stat.nearme.com.cn:10018/statistics/UserActionUpload"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_0
        :pswitch_e
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_d
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_12
        :pswitch_10
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1a
        :pswitch_19
        :pswitch_17
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method
