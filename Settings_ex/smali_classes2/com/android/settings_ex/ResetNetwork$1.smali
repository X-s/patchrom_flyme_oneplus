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
    .param p1, "this$0"    # Lcom/android/settings_ex/ResetNetwork;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings_ex/ResetNetwork;->-wrap0(Lcom/android/settings_ex/ResetNetwork;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork$1;->this$0:Lcom/android/settings_ex/ResetNetwork;

    invoke-static {v0}, Lcom/android/settings_ex/ResetNetwork;->-wrap1(Lcom/android/settings_ex/ResetNetwork;)V

    .line 116
    :cond_0
    return-void
.end method
