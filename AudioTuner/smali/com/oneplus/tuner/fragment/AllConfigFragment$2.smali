.class Lcom/oneplus/tuner/fragment/AllConfigFragment$2;
.super Ljava/lang/Object;
.source "AllConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/AllConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const-string v1, "category"

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v2}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0550

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "category_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$2;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
