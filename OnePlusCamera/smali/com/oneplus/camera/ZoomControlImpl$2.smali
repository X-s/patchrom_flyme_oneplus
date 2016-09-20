.class Lcom/oneplus/camera/ZoomControlImpl$2;
.super Lcom/oneplus/base/Handle;
.source "ZoomControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ZoomControlImpl;->lockZoom(I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ZoomControlImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ZoomControlImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/camera/ZoomControlImpl$2;->this$0:Lcom/oneplus/camera/ZoomControlImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/camera/ZoomControlImpl$2;->this$0:Lcom/oneplus/camera/ZoomControlImpl;

    # invokes: Lcom/oneplus/camera/ZoomControlImpl;->unlockZoom(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ZoomControlImpl;->access$100(Lcom/oneplus/camera/ZoomControlImpl;Lcom/oneplus/base/Handle;)V

    .line 111
    return-void
.end method
