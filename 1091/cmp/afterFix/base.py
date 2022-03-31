    def export(self, format_='yaml', keys=None):
        """
        Export test data into requested format

        In addition to 'yaml' and 'dict' it supports also a special
        format 'execute' used by the execute step which returns
        (test-name, test-data) tuples.
        """

        # Prepare special format for the executor
        if format_ == 'execute':
            name = self.name
            data = dict()
            data['test'] = self.test
            data['path'] = self.path
            data['framework'] = self.framework
            if self.duration is not None:
                data['duration'] = self.duration
            if self.environment:
                data['environment'] = ' '.join(
                    tmt.utils.shell_variables(self.environment))
            return data

        # Export to Nitrate test case management system
        elif format_ == 'nitrate':
            tmt.export.export_to_nitrate(self)

        # Common node export otherwise
        elif format_ == 'dict' or format_ == "yaml":
            if keys == 'fmf-id':
                return self.fmf_id
            else:
                data = {}
                data['name'] = self.name
                data.update(super().export(format_='dict'))
                data.pop('adjust', None)
                return data
        else:
            raise tmt.utils.GeneralError(
                f"Invalid test export format '{format_}'.")
