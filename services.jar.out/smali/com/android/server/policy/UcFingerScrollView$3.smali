.class Lcom/android/server/policy/UcFingerScrollView$3;
.super Ljava/lang/Object;
.source "UcFingerScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/UcFingerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcFingerScrollView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcFingerScrollView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/policy/UcFingerScrollView$3;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView$3;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x320

    # invokes: Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToShutdown(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/UcFingerScrollView;->access$400(Lcom/android/server/policy/UcFingerScrollView;II)V

    .line 168
    return-void
.end method
