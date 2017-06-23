.class public final enum Landroid/appwidget/AppWidgetManager$LIST_TYPE;
.super Ljava/lang/Enum;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LIST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/appwidget/AppWidgetManager$LIST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/appwidget/AppWidgetManager$LIST_TYPE;

.field public static final enum ALL_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

.field public static final enum ANDROID_DEFAULT_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

.field public static final enum H2_WINDOW_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

.field public static final enum H2_WINDOW_WIDGETS_OF_3RD:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

.field public static final enum H2_WINDOW_WIDGETS_OF_INHOUSE:Landroid/appwidget/AppWidgetManager$LIST_TYPE;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    new-instance v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    const-string v1, "ANDROID_DEFAULT_WIDGETS"

    sget-object v2, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->androidWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v2

    sget-object v3, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v3

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v4, v2}, Landroid/appwidget/AppWidgetManager$LIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->ANDROID_DEFAULT_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    .line 439
    new-instance v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    const-string v1, "H2_WINDOW_WIDGETS"

    sget-object v2, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v2

    sget-object v3, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v3

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v5, v2}, Landroid/appwidget/AppWidgetManager$LIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    .line 440
    new-instance v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    const-string v1, "H2_WINDOW_WIDGETS_OF_INHOUSE"

    sget-object v2, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Landroid/appwidget/AppWidgetManager$LIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS_OF_INHOUSE:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    .line 441
    new-instance v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    const-string v1, "H2_WINDOW_WIDGETS_OF_3RD"

    sget-object v2, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Landroid/appwidget/AppWidgetManager$LIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS_OF_3RD:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    .line 442
    new-instance v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    const-string v1, "ALL_WIDGETS"

    sget-object v2, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->androidWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v2

    sget-object v3, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->getType()I

    move-result v3

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v8, v2}, Landroid/appwidget/AppWidgetManager$LIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->ALL_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    .line 437
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    sget-object v1, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->ANDROID_DEFAULT_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS_OF_INHOUSE:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->H2_WINDOW_WIDGETS_OF_3RD:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->ALL_WIDGETS:Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    aput-object v1, v0, v8

    sput-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->$VALUES:[Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 447
    iput p3, p0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->type:I

    .line 448
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/appwidget/AppWidgetManager$LIST_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    const-class v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/appwidget/AppWidgetManager$LIST_TYPE;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->$VALUES:[Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    invoke-virtual {v0}, [Landroid/appwidget/AppWidgetManager$LIST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/appwidget/AppWidgetManager$LIST_TYPE;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Landroid/appwidget/AppWidgetManager$LIST_TYPE;->type:I

    return v0
.end method
