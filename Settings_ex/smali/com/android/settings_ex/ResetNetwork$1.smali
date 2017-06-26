.class Lcom/android/settings_ex/ResetNetwork$1;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetwork;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/ResetNetwork;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ResetNetwork;->access$000(Lcom/android/settings_ex/ResetNetwork;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    # invokes: Lcom/android/settings_ex/ResetNetwork;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings_ex/ResetNetwork;->access$100(Lcom/android/settings_ex/ResetNetwork;)V

    .line 127
    :cond_0
    return-void
.end method
