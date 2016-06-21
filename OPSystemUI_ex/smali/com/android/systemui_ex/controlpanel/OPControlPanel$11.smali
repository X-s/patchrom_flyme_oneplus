.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideControlPanel()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 872
    return-void
.end method

.method public hideControlPanelThenLaunchIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAppIntent:Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/content/Intent;)Landroid/content/Intent;

    .line 877
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$11;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 878
    return-void
.end method
