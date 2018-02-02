.class public final enum Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;
.super Ljava/lang/Enum;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

.field public static final enum INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

.field public static final enum NONE:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

.field public static final enum NORMAL:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->NORMAL:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    .line 26
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    const-string/jumbo v1, "INDENTED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    .line 30
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->NONE:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->NORMAL:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->NONE:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->$VALUES:[Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->$VALUES:[Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    return-object v0
.end method
