.class public final enum Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
.super Ljava/lang/Enum;
.source "RectangleMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/RectangleMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field public static final enum LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field public static final enum NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field public static final enum NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field public static final enum TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    const-string/jumbo v1, "NormalMask"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    const-string/jumbo v1, "LatestMask"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    const-string/jumbo v1, "NextMask"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    const-string/jumbo v1, "TestMask"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->$VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->$VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-object v0
.end method
