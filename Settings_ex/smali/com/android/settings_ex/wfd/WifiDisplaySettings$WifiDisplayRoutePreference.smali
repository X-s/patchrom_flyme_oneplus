.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;
.super Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDisplayRoutePreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p4, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .line 697
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 699
    iput-object p4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 700
    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->setWidgetLayoutResource(I)V

    .line 701
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 705
    invoke-super {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;->onBindView(Landroid/view/View;)V

    .line 707
    const v2, 0x7f0f01a8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 708
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 712
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 714
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 715
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 718
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 723
    return-void
.end method
