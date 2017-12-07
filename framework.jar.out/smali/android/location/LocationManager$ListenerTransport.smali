.class Landroid/location/LocationManager$ListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -wrap0(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 238
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 239
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 241
    if-nez p3, :cond_0

    .line 242
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$ListenerTransport$1;-><init>(Landroid/location/LocationManager$ListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 238
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$ListenerTransport$2;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 297
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 317
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v6}, Landroid/location/LocationManager;->-get1(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return-void

    .line 299
    :pswitch_0
    new-instance v3, Landroid/location/Location;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/location/Location;

    invoke-direct {v3, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 300
    .local v3, "location":Landroid/location/Location;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 303
    .end local v3    # "location":Landroid/location/Location;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 304
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "provider":Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 306
    .local v5, "status":I
    const-string/jumbo v6, "extras"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 307
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v4, v5, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 310
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "status":I
    :pswitch_2
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_3
    iget-object v7, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 262
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 284
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 269
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    if-eqz p3, :cond_0

    .line 274
    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method
