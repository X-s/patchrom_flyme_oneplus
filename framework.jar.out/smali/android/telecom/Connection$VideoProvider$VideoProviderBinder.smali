.class final Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
.super Lcom/android/internal/telecom/IVideoProvider$Stub;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderBinder"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 968
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method


# virtual methods
.method public addVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .prologue
    .line 970
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    .line 971
    const/4 v1, 0x1

    .line 970
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 969
    return-void
.end method

.method public removeVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .prologue
    .line 975
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    .line 976
    const/16 v1, 0xc

    .line 975
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 974
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1016
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1012
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1001
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1002
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1003
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1004
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1000
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    .line 1009
    const/16 v1, 0x8

    .line 1008
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1007
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 980
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 979
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 992
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    .line 993
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 992
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 988
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 987
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1020
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 984
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 983
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 997
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 996
    return-void
.end method
