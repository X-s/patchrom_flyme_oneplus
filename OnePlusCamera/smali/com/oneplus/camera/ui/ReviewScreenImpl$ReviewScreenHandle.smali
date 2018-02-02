.class Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;
.super Lcom/oneplus/base/Handle;
.source "ReviewScreenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReviewScreenHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    .line 61
    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap2(Lcom/oneplus/camera/ui/ReviewScreenImpl;I)V

    .line 65
    return-void
.end method
