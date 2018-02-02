.class final enum Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;
.super Ljava/lang/Enum;
.source "ExpandableBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

.field public static final enum COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

.field public static final enum COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

.field public static final enum EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

.field public static final enum EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    const-string/jumbo v1, "COLLAPSED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 38
    new-instance v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    const-string/jumbo v1, "COLLAPSING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 39
    new-instance v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    const-string/jumbo v1, "EXPANDING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 40
    new-instance v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->$VALUES:[Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->$VALUES:[Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    return-object v0
.end method
