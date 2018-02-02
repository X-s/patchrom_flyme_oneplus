.class Lcom/oneplus/camera/LegacyCameraImpl$10;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->-set0(Lcom/oneplus/camera/LegacyCameraImpl;Z)Z

    .line 280
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap0(Lcom/oneplus/camera/LegacyCameraImpl;Z)Z

    .line 277
    return-void
.end method
