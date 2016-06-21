.class Lcom/android/systemui_ex/doze/OPDozeService$1;
.super Ljava/lang/Object;
.source "OPDozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/doze/OPDozeService;->onDreamingStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/doze/OPDozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$1;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$1;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$1;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->startDozing()V

    .line 196
    :cond_0
    return-void
.end method
