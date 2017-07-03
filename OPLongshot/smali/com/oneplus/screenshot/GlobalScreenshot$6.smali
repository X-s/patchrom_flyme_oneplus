.class Lcom/oneplus/screenshot/GlobalScreenshot$6;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$6;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # invokes: Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 854
    return-void
.end method
