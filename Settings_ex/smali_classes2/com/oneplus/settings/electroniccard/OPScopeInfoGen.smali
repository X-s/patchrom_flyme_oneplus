.class public Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;
.super Ljava/lang/Object;
.source "OPScopeInfoGen.java"


# static fields
.field static isDevEnv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->isDevEnv:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScopeInfo(I)[Ljava/lang/String;
    .locals 8
    .param p0, "type"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    const-string/jumbo v1, "OPScopeInfoGen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gen scopeInfo type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 20
    .local v0, "arr":[Ljava/lang/String;
    const-string/jumbo v1, "sales_client"

    aput-object v1, v0, v4

    .line 21
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 22
    const-string/jumbo v1, "write"

    aput-object v1, v0, v6

    .line 23
    const-string/jumbo v1, "30e1872d0c9f5aac488151a4585e564b"

    aput-object v1, v0, v7

    .line 24
    packed-switch p0, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "OPScopeInfoGen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gen scopeInfo : client_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", grant_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    const-string/jumbo v3, ", scope = "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    aget-object v3, v0, v6

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    const-string/jumbo v3, ", client_secret = "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    aget-object v3, v0, v7

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v0

    .line 26
    :pswitch_1
    const-string/jumbo v1, "sales_client"

    aput-object v1, v0, v4

    .line 27
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 28
    const-string/jumbo v1, "write"

    aput-object v1, v0, v6

    .line 29
    const-string/jumbo v1, "30e1872d0c9f5aac488151a4585e564b"

    aput-object v1, v0, v7

    goto :goto_0

    .line 32
    :pswitch_2
    const-string/jumbo v1, "trade_client"

    aput-object v1, v0, v4

    .line 33
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 34
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 35
    const-string/jumbo v1, "fb312879464fd1c306085f18fe4f8d06"

    aput-object v1, v0, v7

    goto :goto_0

    .line 38
    :pswitch_3
    const-string/jumbo v1, "sales_client"

    aput-object v1, v0, v4

    .line 39
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 40
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 41
    const-string/jumbo v1, "30e1872d0c9f5aac488151a4585e564b"

    aput-object v1, v0, v7

    goto/16 :goto_0

    .line 52
    :pswitch_4
    sget-boolean v1, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->isDevEnv:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "cstest"

    :goto_1
    aput-object v1, v0, v4

    .line 53
    sget-boolean v1, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->isDevEnv:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "client_credentials"

    :goto_2
    aput-object v1, v0, v5

    .line 54
    sget-boolean v1, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->isDevEnv:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "read"

    :goto_3
    aput-object v1, v0, v6

    .line 55
    sget-boolean v1, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->isDevEnv:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2d65b204c84348549f228b7cc61352bb"

    :goto_4
    aput-object v1, v0, v7

    goto/16 :goto_0

    .line 52
    :cond_0
    const-string/jumbo v1, "CS_gsp"

    goto :goto_1

    .line 53
    :cond_1
    const-string/jumbo v1, "client_credentials"

    goto :goto_2

    .line 54
    :cond_2
    const-string/jumbo v1, "gspread"

    goto :goto_3

    .line 55
    :cond_3
    const-string/jumbo v1, "3a985db6112d366392fcbc5bd90c0901"

    goto :goto_4

    .line 58
    :pswitch_5
    const-string/jumbo v1, "goodscenter_client"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 60
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 61
    const-string/jumbo v1, "5b660d3f269f549423186a7840c3b1a5"

    aput-object v1, v0, v7

    goto/16 :goto_0

    .line 64
    :pswitch_6
    const-string/jumbo v1, "wms_rom"

    aput-object v1, v0, v4

    .line 65
    const-string/jumbo v1, "client_credentials"

    aput-object v1, v0, v5

    .line 66
    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    .line 67
    const-string/jumbo v1, "d605e0937c794339a9e964d50e486238"

    aput-object v1, v0, v7

    goto/16 :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
