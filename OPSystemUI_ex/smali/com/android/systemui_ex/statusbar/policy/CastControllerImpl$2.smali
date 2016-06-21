.class Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 295
    # getter for: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 297
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 300
    # getter for: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 302
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 305
    # getter for: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 307
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 310
    # getter for: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 312
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 315
    # getter for: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteUnselected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 317
    return-void
.end method
