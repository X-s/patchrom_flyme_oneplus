.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;
.super Ljava/lang/Object;
.source "OPPasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    # invokes: Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V
    invoke-static {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 583
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 584
    return-void
.end method
