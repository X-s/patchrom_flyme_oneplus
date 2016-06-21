.class Lcom/android/systemui_ex/egg/LLand$2;
.super Ljava/lang/Object;
.source "LLand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/egg/LLand;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/egg/LLand;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/egg/LLand;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand$2;->this$0:Lcom/android/systemui_ex/egg/LLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand$2;->this$0:Lcom/android/systemui_ex/egg/LLand;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/egg/LLand;->mFrozen:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->access$102(Lcom/android/systemui_ex/egg/LLand;Z)Z

    .line 398
    return-void
.end method
