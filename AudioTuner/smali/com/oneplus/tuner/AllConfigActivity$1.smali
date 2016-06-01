.class Lcom/oneplus/tuner/AllConfigActivity$1;
.super Ljava/lang/Object;
.source "AllConfigActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/AllConfigActivity;->initView(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/AllConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/AllConfigActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/tuner/AllConfigActivity$1;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 77
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "shuqi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clicked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "category"

    iget-object v2, p0, Lcom/oneplus/tuner/AllConfigActivity$1;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    invoke-virtual {v2}, Lcom/oneplus/tuner/AllConfigActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/AllConfigActivity$1;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    # getter for: Lcom/oneplus/tuner/AllConfigActivity;->mNameResId:[I
    invoke-static {v3}, Lcom/oneplus/tuner/AllConfigActivity;->access$100(Lcom/oneplus/tuner/AllConfigActivity;)[I

    move-result-object v3

    aget v3, v3, p3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "category_id"

    add-int/lit8 v2, p3, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/oneplus/tuner/AllConfigActivity$1;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/tuner/AllConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/tuner/AllConfigActivity$1;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/AllConfigActivity;->finish()V

    .line 87
    return-void
.end method
