.class public interface abstract Lcom/oneplus/camera/watermark/OnlineWatermarkController;
.super Ljava/lang/Object;
.source "OnlineWatermarkController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_IS_BOKEH:I = 0x1

.field public static final PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 17
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract enter(I)Z
.end method

.method public abstract exit(I)V
.end method

.method public abstract setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V
.end method
