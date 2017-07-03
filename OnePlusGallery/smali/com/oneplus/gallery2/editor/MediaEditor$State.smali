.class public final enum Lcom/oneplus/gallery2/editor/MediaEditor$State;
.super Ljava/lang/Enum;
.source "MediaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/MediaEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/MediaEditor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum NONE:Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum PROCESSING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

.field public static final enum READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 62
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 66
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 70
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "PROCESSING_PREVIEW"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 74
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 78
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/MediaEditor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/MediaEditor$State;

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->$VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$State;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/MediaEditor$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/MediaEditor$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->$VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/MediaEditor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/MediaEditor$State;

    return-object v0
.end method
