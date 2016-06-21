.class final Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;
.super Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TileRecord"
.end annotation


# instance fields
.field scanState:Z

.field tile:Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<*>;"
        }
    .end annotation
.end field

.field tileView:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$TileRecord;-><init>()V

    return-void
.end method
