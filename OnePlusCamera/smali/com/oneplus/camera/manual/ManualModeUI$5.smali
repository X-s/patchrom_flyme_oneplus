.class Lcom/oneplus/camera/manual/ManualModeUI$5;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$5;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$5;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set10(Lcom/oneplus/camera/manual/ManualModeUI;Z)Z

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$5;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap29(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 290
    return-void
.end method
