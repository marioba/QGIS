/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgssublayersdialog.h                                         *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsSublayersDialog : QDialog
{

%TypeHeaderCode
#include "qgssublayersdialog.h"
%End
  public:

    enum ProviderType
    {
      Ogr,
      Gdal,
      Vsifile
    };

    struct LayerDefinition
    {
      LayerDefinition();

      int layerId;
      QString layerName;  //!< Name of the layer (not necessarily unique)
      int count;
      QString type;       //!< Extra type depending on the use (e.g. geometry type for vector sublayers)
    };

    typedef QList<QgsSublayersDialog::LayerDefinition> LayerDefinitionList;

    QgsSublayersDialog( ProviderType providerType,
                        const QString &name,
                        QWidget *parent /TransferThis/ = 0,
                        Qt::WindowFlags fl = 0 );

    ~QgsSublayersDialog();

    void populateLayerTable( const LayerDefinitionList &list );
%Docstring
.. versionadded:: 2.16
%End

    LayerDefinitionList selection();
%Docstring
.. versionadded:: 2.16
 :rtype: LayerDefinitionList
%End

    void setShowAddToGroupCheckbox( bool showAddToGroupCheckbox );
%Docstring
.. versionadded:: 3.0
%End

    bool showAddToGroupCheckbox() const;
%Docstring
.. versionadded:: 3.0
 :rtype: bool
%End

    bool addToGroupCheckbox() const;
%Docstring
.. versionadded:: 3.0
 :rtype: bool
%End

    int countColumn() const;
%Docstring
.. versionadded:: 3.0
 :rtype: int
%End

  public slots:
    int exec();
%Docstring
 :rtype: int
%End

  protected:

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgssublayersdialog.h                                         *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
