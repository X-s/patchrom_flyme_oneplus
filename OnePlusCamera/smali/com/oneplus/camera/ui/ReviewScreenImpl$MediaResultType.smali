.class final enum Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;
.super Ljava/lang/Enum;
.source "ReviewScreenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

.field public static final enum PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

.field public static final enum PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

.field public static final enum VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    const-string v1, "PHOTO_CONTENT_URI"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    .line 68
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    const-string v1, "PHOTO_THUMBNAIL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    .line 69
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    const-string v1, "VIDEO_CONTENT_URI"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->$VALUES:[Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->$VALUES:[Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    return-object v0
.end method
