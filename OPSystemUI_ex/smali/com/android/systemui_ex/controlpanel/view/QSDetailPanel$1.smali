.class Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;
.super Ljava/lang/Object;
.source "QSDetailPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->access$000(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;->hideControlPanel(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->access$100(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getHost()Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->startSettingsActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
