.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-wrap3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-wrap6(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get4(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 237
    :cond_1
    return-void
.end method
