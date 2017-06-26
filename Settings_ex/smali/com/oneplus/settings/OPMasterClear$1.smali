.class Lcom/oneplus/settings/OPMasterClear$1;
.super Ljava/lang/Object;
.source "OPMasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPMasterClear;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMasterClear;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oneplus/settings/OPMasterClear$1;->this$0:Lcom/oneplus/settings/OPMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClear$1;->this$0:Lcom/oneplus/settings/OPMasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/oneplus/settings/OPMasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/OPMasterClear;->access$000(Lcom/oneplus/settings/OPMasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClear$1;->this$0:Lcom/oneplus/settings/OPMasterClear;

    # invokes: Lcom/oneplus/settings/OPMasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/oneplus/settings/OPMasterClear;->access$100(Lcom/oneplus/settings/OPMasterClear;)V

    .line 118
    :cond_0
    return-void
.end method
