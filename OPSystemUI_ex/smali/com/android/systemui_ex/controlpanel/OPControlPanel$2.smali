.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$2;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;->start()V
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
    .line 163
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$2;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$2;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;->onShowDetail(Z)V

    .line 168
    return-void
.end method
