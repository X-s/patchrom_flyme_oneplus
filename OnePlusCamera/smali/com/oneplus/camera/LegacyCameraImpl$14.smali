.class Lcom/oneplus/camera/LegacyCameraImpl$14;
.super Lcom/oneplus/base/Handle;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/LegacyCameraImpl;->capture(II)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$14;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$14;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap18(Lcom/oneplus/camera/LegacyCameraImpl;Z)V

    .line 1514
    return-void
.end method
