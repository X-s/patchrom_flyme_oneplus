.class Lcom/oneplus/tuner/fragment/AllConfigFragment$1;
.super Ljava/lang/Object;
.source "AllConfigFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/OnePlusCategoryDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    const-string v1, "category"

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v2}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AllConfigFragment;->mNameResId:[I
    invoke-static {v3}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->access$200(Lcom/oneplus/tuner/fragment/AllConfigFragment;)[I

    move-result-object v3

    aget v3, v3, p3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "category_id"

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    # invokes: Lcom/oneplus/tuner/fragment/AllConfigFragment;->getCategoryId(I)Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->access$300(Lcom/oneplus/tuner/fragment/AllConfigFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/fragment/AllConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
