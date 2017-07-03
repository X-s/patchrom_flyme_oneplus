.class public final enum Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
.super Ljava/lang/Enum;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/drawable/BorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Border"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/drawable/BorderDrawable$Border;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

.field public static final enum BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

.field public static final enum LEFT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

.field public static final enum RIGHT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

.field public static final enum TOP:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->LEFT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .line 32
    new-instance v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->TOP:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .line 33
    new-instance v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->RIGHT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .line 34
    new-instance v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->LEFT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->TOP:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->RIGHT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->$VALUES:[Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->$VALUES:[Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    return-object v0
.end method
