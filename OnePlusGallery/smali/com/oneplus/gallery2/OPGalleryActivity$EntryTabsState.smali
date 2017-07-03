.class final enum Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
.super Ljava/lang/Enum;
.source "OPGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EntryTabsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field public static final enum CLOSING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field public static final enum INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field public static final enum OPENING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field public static final enum VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field public static final enum VISIBLE_PARTIAL:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 449
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    const-string v1, "VISIBLE_PARTIAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 450
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 451
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 452
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->OPENING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 446
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->OPENING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->$VALUES:[Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

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
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 446
    const-class v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->$VALUES:[Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    return-object v0
.end method
