.class Lcom/aps/a$a;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/aps/a;


# direct methods
.method private constructor <init>(Lcom/aps/a;)V
    .locals 0

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1851
    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/a;Lcom/aps/a$1;)V
    .locals 0

    .prologue
    .line 1848
    invoke-direct {p0, p1}, Lcom/aps/a$a;-><init>(Lcom/aps/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1859
    if-nez p2, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1863
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1864
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    iget-object v1, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v1}, Lcom/aps/a;->d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/a;->a(Lcom/aps/a;Ljava/util/List;)Ljava/util/List;

    .line 1868
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/a;->c(Lcom/aps/a;J)J

    .line 1869
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->e(Lcom/aps/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/aps/a;->a(Lcom/aps/a;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1876
    :cond_2
    :try_start_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1880
    const/4 v0, 0x4

    .line 1882
    :try_start_2
    iget-object v1, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v1}, Lcom/aps/a;->d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 1889
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1894
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->f(Lcom/aps/a;)V

    goto :goto_0

    .line 1891
    :pswitch_2
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->f(Lcom/aps/a;)V

    goto :goto_0

    .line 1897
    :pswitch_3
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->f(Lcom/aps/a;)V

    goto :goto_0

    .line 1902
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1903
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 1904
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->g(Lcom/aps/a;)V

    .line 1908
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/aps/f;->i:J

    .line 1909
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/aps/f;->j:J

    goto/16 :goto_0

    .line 1913
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1917
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->h(Lcom/aps/a;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1918
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/aps/f;->i:J

    .line 1919
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/aps/f;->j:J

    goto/16 :goto_0

    .line 1924
    :cond_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1925
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    invoke-static {p1}, Lcom/aps/t;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/a;->a(Lcom/aps/a;Z)Z

    goto/16 :goto_0

    .line 1929
    :cond_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/aps/a$a;->a:Lcom/aps/a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/aps/a;->a(ZI)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1883
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
