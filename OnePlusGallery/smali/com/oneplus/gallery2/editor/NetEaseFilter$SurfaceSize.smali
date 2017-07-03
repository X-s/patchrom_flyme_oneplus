.class final enum Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;
.super Ljava/lang/Enum;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SurfaceSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

.field public static final enum PREVIEW:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

.field public static final enum THUMBNAIL:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->THUMBNAIL:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    .line 127
    new-instance v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->PREVIEW:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    sget-object v1, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->THUMBNAIL:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->PREVIEW:Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->$VALUES:[Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->$VALUES:[Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/NetEaseFilter$SurfaceSize;

    return-object v0
.end method
