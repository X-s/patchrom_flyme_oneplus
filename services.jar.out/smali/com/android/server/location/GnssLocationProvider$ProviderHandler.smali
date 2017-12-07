.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2223
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2222
    return-void
.end method

.method private handleInitialize()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2288
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v12}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/server/location/GnssLocationProvider;->-wrap28(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    .line 2297
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    .line 2298
    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get12(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v11

    .line 2297
    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2302
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap1()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2303
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2304
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2305
    const-string/jumbo v10, "sms"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2306
    const-string/jumbo v10, "localhost"

    const-string/jumbo v11, "7275"

    invoke-virtual {v1, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2309
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2310
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2312
    :try_start_0
    const-string/jumbo v10, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    :goto_0
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2322
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2323
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2324
    const-string/jumbo v10, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v10, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2326
    const-string/jumbo v10, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2327
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2328
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2329
    const-string/jumbo v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2330
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v13, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2334
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2335
    .local v7, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 2336
    invoke-virtual {v7, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 2337
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 2338
    .local v6, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v11}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2342
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2343
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    .line 2344
    .local v4, "minTime":J
    const/4 v3, 0x0

    .line 2345
    .local v3, "minDistance":F
    const/4 v8, 0x0

    .line 2347
    .local v8, "oneShot":Z
    const-string/jumbo v10, "passive"

    .line 2346
    invoke-static {v10, v4, v5, v3, v8}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v9

    .line 2353
    .local v9, "request":Landroid/location/LocationRequest;
    invoke-virtual {v9, v14}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2356
    new-instance v10, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v10, v11, v13}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;)V

    .line 2357
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 2354
    invoke-virtual {v2, v9, v10, v11}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2285
    return-void

    .line 2313
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v7    # "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    .end local v8    # "oneShot":Z
    .end local v9    # "request":Landroid/location/LocationRequest;
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Malformed SUPL init mime type"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2317
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2318
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 2228
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2229
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    .line 2272
    :goto_0
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_0

    .line 2274
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2275
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeLock released by handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2276
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2276
    const-string/jumbo v4, ")"

    .line 2275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_0
    return-void

    .line 2231
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1

    .line 2232
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap16(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_0

    .line 2234
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap14(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_0

    .line 2238
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    .line 2239
    .local v0, "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap20(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2242
    .end local v0    # "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap22(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    goto :goto_0

    .line 2245
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap19(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    goto :goto_0

    .line 2248
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap18(Lcom/android/server/location/GnssLocationProvider;I)V

    goto/16 :goto_0

    .line 2251
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap17(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_0

    .line 2254
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap15(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_0

    .line 2257
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set1(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_0

    .line 2260
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-set0(Lcom/android/server/location/GnssLocationProvider;I)I

    goto/16 :goto_0

    .line 2263
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-static {v3, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap21(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2266
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2269
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    goto/16 :goto_0

    .line 2229
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
