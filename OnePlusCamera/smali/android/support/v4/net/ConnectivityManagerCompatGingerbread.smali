.class Landroid/support/v4/net/ConnectivityManagerCompatGingerbread;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 54
    return v1

    .line 38
    :cond_0
    return v1

    .line 49
    :pswitch_0
    return v1

    .line 51
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
