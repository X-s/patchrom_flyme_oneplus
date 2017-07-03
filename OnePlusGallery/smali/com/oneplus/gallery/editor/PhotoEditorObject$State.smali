.class public final enum Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
.super Ljava/lang/Enum;
.source "PhotoEditorObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/PhotoEditorObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/editor/PhotoEditorObject$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

.field public static final enum ERROR:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

.field public static final enum NEW:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

.field public static final enum PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

.field public static final enum READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

.field public static final enum RELEASED:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .line 45
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .line 49
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .line 53
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->RELEASED:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .line 57
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->READY:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->RELEASED:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->ERROR:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->$VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->$VALUES:[Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    return-object v0
.end method
