.class public interface abstract Lcom/oneplus/camera/FaceBeautyController;
.super Ljava/lang/Object;
.source "FaceBeautyController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_FROM_USER:I = 0x1

.field public static final PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final PROP_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsActivated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/FaceBeautyController;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_ACTIVATED:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStandaloneFaceBeautySupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/FaceBeautyController;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/FaceBeautyController;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FaceBeautyController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Value"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/FaceBeautyController;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 38
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ValueList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/FaceBeautyController;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract activate(I)Z
.end method

.method public abstract deactivate(I)V
.end method

.method public abstract disable(I)Lcom/oneplus/base/Handle;
.end method
