.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 627
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 632
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 637
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 642
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 647
    return-void
.end method
