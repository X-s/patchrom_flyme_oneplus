.class public final enum Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;
.super Ljava/lang/Enum;
.source "MediaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/MediaEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaSavingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field public static final enum ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field public static final enum NONE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field public static final enum SAVING:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field public static final enum SUCCESS:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field public static final enum UNKNOWN_ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->NONE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 93
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 97
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SUCCESS:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 101
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    const-string v1, "ERROR_LOW_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 105
    new-instance v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->UNKNOWN_ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->NONE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SUCCESS:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->UNKNOWN_ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->$VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->$VALUES:[Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    return-object v0
.end method
