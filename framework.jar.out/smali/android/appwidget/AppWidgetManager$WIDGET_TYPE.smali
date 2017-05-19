.class public final enum Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;
.super Ljava/lang/Enum;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIDGET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

.field public static final enum androidWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

.field public static final enum h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

.field public static final enum h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 459
    new-instance v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    const-string v1, "androidWidget"

    invoke-direct {v0, v1, v5, v3}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->androidWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    .line 460
    new-instance v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    const-string v1, "h2InHouseWidget"

    invoke-direct {v0, v1, v3, v4}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    .line 461
    new-instance v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    const-string v1, "h23rdWidget"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    .line 458
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    sget-object v1, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->androidWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h23rdWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->$VALUES:[Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 466
    iput p3, p0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->type:I

    .line 467
    return-void
.end method

.method public static isH2Widget(I)Z
    .locals 1
    .param p0, "widgetType"    # I

    .prologue
    .line 474
    sget-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->h2InHouseWidget:Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    iget v0, v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->type:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 458
    const-class v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->$VALUES:[Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    invoke-virtual {v0}, [Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Landroid/appwidget/AppWidgetManager$WIDGET_TYPE;->type:I

    return v0
.end method
