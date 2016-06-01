.class Lcom/oneplus/tuner/OfficialConfigActivity$3$1;
.super Ljava/lang/Object;
.source "OfficialConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OfficialConfigActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

.field final synthetic val$rList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OfficialConfigActivity$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

    iput-object p2, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->val$rList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

    iget-object v0, v0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

    iget-object v0, v0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$600(Lcom/oneplus/tuner/OfficialConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

    iget-object v0, v0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$600(Lcom/oneplus/tuner/OfficialConfigActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->val$rList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;->this$1:Lcom/oneplus/tuner/OfficialConfigActivity$3;

    iget-object v0, v0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;
    invoke-static {v0}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$300(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/adapter/TypeListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->notifyDataSetChanged()V

    .line 187
    :cond_0
    return-void
.end method
