.class Lcom/oneplus/tuner/OppoSearchActivity$1;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OppoSearchActivity;->showCurrentHeadset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OppoSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OppoSearchActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$1;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity$1;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    iget-object v1, v1, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity$1;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/tuner/OppoSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
