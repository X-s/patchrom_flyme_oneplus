.class Lcom/oneplus/tuner/OPCommonStyleFragment$1$1;
.super Ljava/lang/Object;
.source "OPCommonStyleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$1;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment$1;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$1$1;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$1$1;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$1;

    iget-object v0, v0, Lcom/oneplus/tuner/OPCommonStyleFragment$1;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v0, v0, Lcom/oneplus/tuner/OPCommonStyleFragment;->mCommonStyleAdapter:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method
