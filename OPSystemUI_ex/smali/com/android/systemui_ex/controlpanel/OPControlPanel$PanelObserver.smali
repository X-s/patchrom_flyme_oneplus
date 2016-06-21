.class final Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;
.super Landroid/database/ContentObserver;
.source "OPControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelObserver"
.end annotation


# instance fields
.field private final CONTROL_PANEL_WIZARD:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .line 755
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 752
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->CONTROL_PANEL_WIZARD:Landroid/net/Uri;

    .line 756
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 768
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->CONTROL_PANEL_WIZARD:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateWizardEnable()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    .line 772
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 760
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$PanelObserver;->CONTROL_PANEL_WIZARD:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 764
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
