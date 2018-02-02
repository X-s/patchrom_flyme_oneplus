.class public interface abstract Lcom/oneplus/camera/ui/CameraPreviewGrid;
.super Ljava/lang/Object;
.source "CameraPreviewGrid.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;
    }
.end annotation


# static fields
.field public static final PROP_GRID_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_GRID_TYPE:Ljava/lang/String; = "Grid.Type"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "GridType"

    const-class v2, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const-class v3, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    sget-object v5, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewGrid;->PROP_GRID_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 9
    return-void
.end method
