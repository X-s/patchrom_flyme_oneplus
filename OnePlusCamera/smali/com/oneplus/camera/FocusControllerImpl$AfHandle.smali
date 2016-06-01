.class final Lcom/oneplus/camera/FocusControllerImpl$AfHandle;
.super Lcom/oneplus/base/Handle;
.source "FocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FocusControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AfHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/camera/FocusControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/FocusControllerImpl;Ljava/util/List;I)V
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    iput-object p1, p0, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->this$0:Lcom/oneplus/camera/FocusControllerImpl;

    .line 58
    const-string v0, "AutoFocus"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->regions:Ljava/util/List;

    .line 60
    iput p3, p0, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->flags:I

    .line 61
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/oneplus/camera/FocusControllerImpl$AfHandle;->closeDirectly()V

    .line 66
    return-void
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 72
    return-void
.end method
