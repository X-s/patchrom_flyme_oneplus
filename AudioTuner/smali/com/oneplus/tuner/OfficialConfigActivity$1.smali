.class Lcom/oneplus/tuner/OfficialConfigActivity$1;
.super Ljava/lang/Object;
.source "OfficialConfigActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OfficialConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OfficialConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/tuner/OfficialConfigActivity$1;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$1;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mBrandListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$000(Lcom/oneplus/tuner/OfficialConfigActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$1;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    add-int/lit8 v1, p3, 0x1

    # setter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$102(Lcom/oneplus/tuner/OfficialConfigActivity;I)I

    .line 90
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$1;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # invokes: Lcom/oneplus/tuner/OfficialConfigActivity;->loadConfigNum()V
    invoke-static {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$200(Lcom/oneplus/tuner/OfficialConfigActivity;)V

    .line 91
    return-void
.end method
