.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 621
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 626
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 631
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 636
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 641
    return-void
.end method
