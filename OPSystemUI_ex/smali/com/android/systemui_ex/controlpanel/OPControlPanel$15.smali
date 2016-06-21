.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;


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
    .line 999
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$15;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanel:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 1005
    :cond_0
    return-void
.end method
