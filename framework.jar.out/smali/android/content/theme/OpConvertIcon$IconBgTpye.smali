.class public final enum Landroid/content/theme/OpConvertIcon$IconBgTpye;
.super Ljava/lang/Enum;
.source "OpConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theme/OpConvertIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconBgTpye"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/theme/OpConvertIcon$IconBgTpye;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/theme/OpConvertIcon$IconBgTpye;

.field public static final enum COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

.field public static final enum MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

.field public static final enum SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;

    const-string v1, "MASK"

    invoke-direct {v0, v1, v2}, Landroid/content/theme/OpConvertIcon$IconBgTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    new-instance v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v3}, Landroid/content/theme/OpConvertIcon$IconBgTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    new-instance v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Landroid/content/theme/OpConvertIcon$IconBgTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v1, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/theme/OpConvertIcon$IconBgTpye;->COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->$VALUES:[Landroid/content/theme/OpConvertIcon$IconBgTpye;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/theme/OpConvertIcon$IconBgTpye;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;

    return-object v0
.end method

.method public static values()[Landroid/content/theme/OpConvertIcon$IconBgTpye;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->$VALUES:[Landroid/content/theme/OpConvertIcon$IconBgTpye;

    invoke-virtual {v0}, [Landroid/content/theme/OpConvertIcon$IconBgTpye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/theme/OpConvertIcon$IconBgTpye;

    return-object v0
.end method
